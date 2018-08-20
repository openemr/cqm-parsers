module HQMF2CQL
  # Class containing value set information
  class ValueSetHelper
    VALUESET_MAP = {
      '2.16.840.1.113883.10.20.28.4.7' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.8' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.9' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.10' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.11' => { valueset_path: "./*/cda:participation[@typeCode='PRD']/cda:role[@classCode='MANU']/cda:playingDevice[@classCode='DEV']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.12' => { valueset_path: "./*/cda:participation[@typeCode='PRD']/cda:role[@classCode='MANU']/cda:playingDevice[@classCode='DEV']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.13' => { valueset_path: "./*/cda:participation[@typeCode='DEV']/cda:role[@classCode='MANU']/cda:playingDevice[@classCode='DEV']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.14' => { valueset_path: "./*/cda:participation[@typeCode='PRD']/cda:role[@classCode='MANU']/cda:playingDevice[@classCode='DEV']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.15' => { valueset_path: "./*/cda:participation[@typeCode='DEV']/cda:role[@classCode='MANU']/cda:playingDevice[@classCode='DEV']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.16' => { valueset_path: "./*/cda:participation[@typeCode='DEV']/cda:role[@classCode='MANU']/cda:playingDevice[@classCode='DEV']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.1' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.17' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.18' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.19' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.20' => { valueset_path: "./*/cda:outboundRelationship[@typeCode='CAUS']/cda:observationCriteria/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.21' => { valueset_path: "./*/cda:outboundRelationship[@typeCode='CAUS']/cda:observationCriteria/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.22' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.23' => { valueset_path: './*/cda:code', result_path: './*/cda:value' },
      '2.16.840.1.113883.10.20.28.4.24' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.26' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.27' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.5' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.28' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.29' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.30' => { valueset_path: './*/cda:code', result_path: './*/cda:value' },
      '2.16.840.1.113883.10.20.28.4.31' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.33' => { valueset_path: "./*/cda:outboundRelationship[@typeCode='CAUS' and @inversionInd='true']/cda:procedureCriteria/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.34' => { valueset_path: "./*/cda:outboundRelationship[@typeCode='CAUS']/cda:actCriteria/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.35' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.36' => { valueset_path: './*/cda:code', result_path: "./*/cda:outboundRelationship[@typeCode='REFR']//cda:code[@code='394617004']/../cda:value" },
      '2.16.840.1.113883.10.20.28.4.37' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.39' => { valueset_path: "./*/cda:outboundRelationship[@typeCode='CAUS']/cda:observationCriteria/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.40' => { valueset_path: "./*/cda:outboundRelationship[@typeCode='CAUS']/cda:observationCriteria/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.41' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.42' => { valueset_path: './*/cda:code', result_path: './*/cda:value' },
      '2.16.840.1.113883.10.20.28.4.43' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.44' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role/cda:playingMaterial[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.45' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='MANU']/cda:playingManufacturedMaterial[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.46' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='MANU']/cda:playingEntity[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.47' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='MANU']/cda:playingEntity[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.48' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='MANU']/cda:playingManufacturedMaterial[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.49' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='MANU']/cda:playingMaterial[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.50' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='MANU']/cda:playingMaterial[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.51' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='MANU']/cda:playingMaterial[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.52' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.53' => { valueset_path: './*/cda:code', result_path: './*/cda:value' },
      '2.16.840.1.113883.10.20.28.4.6' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.54' => { valueset_path: nil, result_path: nil },
      '2.16.840.1.113883.10.20.28.4.56' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.57' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.58' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.59' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.55' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.86' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.61' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.62' => { valueset_path: './*/cda:value', result_path: "./*/cda:outboundRelationship[@typeCode='REFR']//cda:code[@code='394617004']/../cda:value" },
      '2.16.840.1.113883.10.20.28.4.63' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.64' => { valueset_path: "./*/cda:outboundRelationship[@typeCode='CAUS' and @inversionInd='true']/cda:procedureCriteria/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.65' => { valueset_path: "./*/cda:outboundRelationship[@typeCode='CAUS' and @inversionInd='true']/cda:procedureCriteria/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.66' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.67' => { valueset_path: './*/cda:code', result_path: "./*/cda:outboundRelationship[@typeCode='REFR']//cda:code[@code='394617004']/../cda:value" },
      '2.16.840.1.113883.10.20.28.4.68' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.70' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.71' => { valueset_path: "./*/cda:participation/cda:role[@classCode='ASSIGNED']/cda:playingDevice[@classCode='DEV' and @determinerCode='KIND']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.87' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.72' => { valueset_path: './*/cda:code', result_path: './*/cda:value' },
      '2.16.840.1.113883.10.20.28.4.93' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.73' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='ADMM']/cda:playingMaterial[@classCode='MAT' and @determinerCode='KIND']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.74' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='ADMM']/cda:playingMaterial[@classCode='MAT' and @determinerCode='KIND']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.75' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='ADMM']/cda:playingMaterial[@classCode='MAT' and @determinerCode='KIND']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.76' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='ADMM']/cda:playingMaterial[@classCode='MAT' and @determinerCode='KIND']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.77' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='ADMM']/cda:playingMaterial[@classCode='MAT' and @determinerCode='KIND']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.78' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='ADMM']/cda:playingMaterial[@classCode='MAT' and @determinerCode='KIND']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.79' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.80' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.81' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.82' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.84' => { valueset_path: "./*/cda:participation[@typeCode='ORG']/cda:role[@classCode='LOCE']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.85' => { valueset_path: "./*/cda:participation[@typeCode='ORG']/cda:role[@classCode='LOCE']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.110' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.111' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.112' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role/cda:playingManufacturedMaterial[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.113' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role/cda:playingManufacturedMaterial[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.114' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role/cda:playingEntity[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.115' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role/cda:playingMaterial[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.116' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.117' => { valueset_path: './*/cda:code', result_path: './*/cda:value' },
      '2.16.840.1.113883.10.20.28.4.118' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.119' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='MANU']/cda:playingEntity[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.120' => { valueset_path: "./*/cda:participation[@typeCode='CSM']/cda:role[@classCode='MANU']/cda:playingEntity[@classCode='MMAT']/cda:code", result_path: nil },
      '2.16.840.1.113883.10.20.28.4.130' => { valueset_path: './*/cda:value', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.131' => { valueset_path: './*/cda:code', result_path: nil },
      '2.16.840.1.113883.10.20.28.4.132' => { valueset_path: "./*/cda:outboundRelationship[@typeCode='RSON']/cda:observationCriteria/cda:value", result_path: nil }
    }

    def self.get_mapping_for_template(template)
      VALUESET_MAP[template]
    end
  end
end
