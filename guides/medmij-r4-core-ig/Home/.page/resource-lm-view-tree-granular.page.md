---
topic: resource-lm-view-tree-granular
expand: yes
---

<tabs>
    <tab title="Tree view" active="true">
      {{tree, hybrid}}
    </tab>
    <tab title="Mappings">
      <fql>
        from
          StructureDefinition
        where
          url = %logicalmodelcanonical
        for
          differential.element
        select
          id, join mapping {identity, map, comment}
        select
          'Mapping name': identity,
          'Concept id': map,
          'Logical element': id.replace('medmij-core-lm-', ''),
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