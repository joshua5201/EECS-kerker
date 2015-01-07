# let carrierwave accept unicode filenames
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
