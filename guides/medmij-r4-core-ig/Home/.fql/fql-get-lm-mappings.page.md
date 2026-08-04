---
topic: fql-get-lm-mappings
---

<fql>
  from
    StructureDefinition
  where
    url = %canonical
  for
    differential.element
  select
    id, join mapping {identity, map, comment}
  select
    'Mapping name': identity,
    'Concept id': map,
    'Logical element': id.replace('medmij-core-lm-', '')
    Comments: comment
  order by identity
</fql>