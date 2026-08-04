---
topic: resource-view-tree-granular
---

<tabs>
    <tab title="Tree view" active="true">
      {{tree, buttons}}
    </tab>
    <tab title="Mappings">
      <fql>
        from
          StructureDefinition
        where
          url = %profilecanonical
        for
          differential.element
        select
          id, join mapping {identity, map, comment}
        select
          'Mapping name': identity,
          'Concept id': map,
          'FHIR element': id,
          Comments: comment
        order by identity
      </fql>
    </tab>
    <tab title="Xml">
      {{xml}}
    </tab>
    <tab title="Json">
      {{json}}
    </tab>
</tabs>