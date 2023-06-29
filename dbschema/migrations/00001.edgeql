CREATE MIGRATION m1xyhtfn7v5nsc6ift4uagg2genox6myuwn2tgxtpvqlswztxczspq
    ONTO initial
{
  CREATE FUTURE nonrecursive_access_policies;
  CREATE TYPE default::Car {
      CREATE REQUIRED PROPERTY code -> std::str {
          CREATE CONSTRAINT std::exclusive;
      };
      CREATE REQUIRED PROPERTY createdAt -> std::datetime {
          SET default := (std::datetime_current());
      };
      CREATE REQUIRED PROPERTY prop1 -> std::str {
          CREATE CONSTRAINT std::expression ON ((__subject__ = std::str_trim(__subject__)));
      };
      CREATE REQUIRED PROPERTY prop2 -> std::str {
          CREATE CONSTRAINT std::expression ON ((__subject__ = std::str_trim(__subject__)));
      };
      CREATE REQUIRED PROPERTY prop3 -> std::str {
          CREATE CONSTRAINT std::expression ON ((__subject__ = std::str_trim(__subject__)));
      };
      CREATE PROPERTY updatedAt -> std::datetime;
  };
};
