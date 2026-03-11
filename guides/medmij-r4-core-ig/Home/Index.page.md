## {{page-title}}

This is the implementation guide for MedMij R4 Core. This is the generic layer defined by MedMij which forms a foundation for all data services that are exchanged in FHIR R4. It contains guidance and requirements on data service-overaching topics, such as granular exchange and Logical Models. Moreover, it might contain FHIR artifacts that are relevant for multiple data services.

This IG builds upon the overarching [MedMij functional design](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp), as well as the [MedMij FHIR Implementation Guide for R4](https://informatiestandaarden.nictiz.nl/wiki/MedMij:IG:V1/FHIR_IG), all defined by Nictiz. All data services that make use of (artifacts within) MedMij R4 Core SHALL have a dependency on MedMij R4 Core, either textually in their respective IG, or technically on the corresponding MedMij R4 Core package.

Note that MedMij Core is defined separately for data services that are exchanged in FHIR STU3. The specifications for MedMij STU3 Core can be found [here](https://simplifier.net/medmij-stu3-core).

For questions or feedback on the IG, please reach out to MedMij via [info@medmij.nl](mailto:info@medmij.nl).