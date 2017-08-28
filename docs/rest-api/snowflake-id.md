# Snowflake ID's

Broid uses Twitter's [snowflake](https://github.com/twitter/snowflake/tree/snowflake-2010) format for uniquely identifiable descriptors (ID's). These ID's are up to 64bits in size (e.g. a uint64) and therefore are always returned as strings in the API to prevent integer overflows in some languages. Snowflake ID's are guaranteed to be unique across all Broid, except in some unique scenarios in which child objects share their parents' ID.
