# -*- encoding : utf-8 -*-
module RademadeAdmin
  module Model
    class Info
      class Relation

        attr_reader :name, :from, :to, :id_setter, :setter, :id_getter, :getter, :type

        def many?
          @has_many
        end

        def related_entities(ids)
          RademadeAdmin::Model::Graph.instance.model_info(to).query_adapter.find(ids)
        end

        protected

        # Initialization for Relation info
        #
        # Required options in Hash :name, :from, :to, :setter, :has_many
        # @param opt [Hash]
        #
        def initialize(opt = {})
          @name = opt[:name]
          @from = opt[:from]
          @to = opt[:to]
          @id_setter = opt[:id_setter]
          @setter = opt[:setter]
          @id_getter = opt[:id_getter]
          @getter = opt[:getter]
          @type = opt[:type]
          @has_many = opt[:has_many]
        end

      end
    end
  end
end