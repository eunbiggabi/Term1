# the module can be included to any class
module EventEmitterCore
    # turn on the event
    # @param event_name [String, Symbol]
    def on(event_name)
      events[event_name.to_sym] ||= []
    end
  
    # turn off the event
    # @param event_name [String, Symbol]
    def off(event_name)
      events.delete(event_name.to_sym)
    end
  
    # subscribe to event
    # @param event_name [String, Symbol]
    # @param handler_proc [Proc]
    #   Proc with [Symbol, Object]
    def subscribe(event_name, handler_proc)
      handler_id = "#{event_name}_#{handler_proc.object_id}"
      events[event_name.to_sym]&.push(
        { id: handler_id, proc: handler_proc }
      )
      handler_id
    end
  
    # unsubscribe to event
    # @param event_name [String, Symbol]
    # @param handler [Proc]
    #   Proc with [Symbol, User]
    def unsubscribe(event_name, handler_id)
      events[event_name.to_sym]&.reject! do |item|
        item[:id] == handler_id
      end
    end
  
    # emit the event
    # @param event_name [String, Symbol]
    def emit(event_name)
      events[event_name.to_sym]&.each do |h|
        h[:proc].call(event_name.to_sym, self)
      end
    end
  
    # get array of existing events
    # @return [Array<Symbols>]
    def all_events
      events.keys
    end
  
    # get array of existing events with stat
    # @return [Array<Symbols, Fixnum>]
    def all_events_with_stat
      events
        .map { |name, arr| [name, arr.size] }
        .flatten
    end
  
    private
  
    def events
      @events ||= {}
    end
  end