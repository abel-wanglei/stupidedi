module Stupidedi
  module Dictionaries
    module FunctionalGroups
      module FiftyTen
        module ElementTypes

          class DecimalVal < Values::SimpleElementVal
            PATTERN = /\A[+-]?            (?# optional leading sign            )
                       (?:
                         (?:\d+\.?\d*)  | (?# whole with optional decimal or ..)
                         (?:\d*?\.?\d+) ) (?# optional whole with decimal      )
                       (?:E[+-]?\d+)?     (?# optional exponent                )
                      \Z/ix
          end

          class << DecimalVal
            # @group Constructors

            # Create an empty decimal value.
            #
            # @return [NumericVal::Empty]
            def empty(definition, parent, usage)
              NumericVal.empty(definition, parent, usage)
            end

            # @return [NumericVal::NonEmpty, NumericVal::Empty]
            def value(object, definition, parent, usage)
              NumericVal.value(object, definition, parent, usage)
            end

            def reader(input, context)
              raise NoMethodError, "@todo"
            end

            # @endgroup
          end

          # Prevent direct instantiation of abstract class DecimalVal
          DecimalVal.eigenclass.send(:protected, :new)

        end
      end
    end
  end
end