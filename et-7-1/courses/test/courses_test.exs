defmodule CoursesTest do
  use ExUnit.Case
  doctest Courses

  test "one string creates single item hash" do
    assert HashDict.equal?(
      Courses.add(HashDict.new, "64850,ENGL 033,RF141"), one_elem_hash)
  end

  test "adds if a key if not already present" do
    assert HashDict.equal?(
      Courses.add(one_elem_hash, "64850,ENGL 032,RF142"),
                  HashDict.put(one_elem_hash, "RF142", ["ENGL 032"]))
  end

  test "appends if key is present" do
    assert HashDict.equal?(
      Courses.add(one_elem_hash, "64851,ENGL 032,RF141"),
                  HashDict.put(HashDict.new, "RF141",
                    ["ENGL 032", "ENGL 033"]))
  end

  test "csv file import" do
    assert HashDict.equal?(
      Courses.create_course_dict("test/courses.csv"),
        Enum.into(
          [{"C101B",
            ["PSYCH 100", "COMS 040", "ENGL 102"]}, {"P104A", ["SPAN 091A"]},
          {"S160", ["MATH 071", "MATH 021", "BIOL 071"]},
          {"VPA200", ["ART 026A", "ART 014", "ART 012"]},
          {"AD221", ["CHEM 030B", "CHEM 001B"]},
          {"C101A", ["LA 072", "LA 033", "ESL 333"]},
          {"PE202",
            ["PED 056A", "PED 022A"]}, {"C102", ["PSYCH 060", "PHIL 010"]},
          {"RD301", ["MATH 073", "MATH 062", "MATH 022"]},
          {"AF231", ["MATH 063", "CHEM 015", "CHEM 012A"]},
          {"RF141",
            ["BUS 065", "PHIL 065", "HIST 040", "ART 090", "ENGL 033"]},
          {"SC103", ["ENGL 086A", "ENGL 001A", "ENGL 080"]},
          {"C103", ["MATH 111", "MATH 011A"]}, {"A4213", ["ESL 322"]},
          {"C105",
            ["ANTH 063", "COUNS 015", "PSYCH 096", "PSYCH 047", "HIST 017A",
             "GEOG 010", "ETH 040", "ETH 035", "ETH 030", "ETH 011"]},
          {"S140", ["NURS 003", "PHYS 004A", "ASTRO 010"]},
          {"PE204", ["PED 053", "PED 043", "PED 039"]},
          {"VPA203", ["JOURN 010", "ESL 334"]}, {"C202", ["ENGL 104"]},
          {"A4231", ["PHYS 004B", "PHYS 002B"]}, {"RD312", ["ESL 091"]},
          {"PE105", ["AJ 115", "AJ 015"]},
          {"SC125", ["ESL 341L", "ESL 091L", "ENGL 321L", "ENGL 001L"]},
          {"RG122", ["ART 091"]}, {"A2211", ["CHEM 030A", "CHEM 015"]},
          {"C203", ["COMS 045", "COMS 020", "VIET 091A"]},
          {"VPA201",
            ["ART 038", "ART 024"]}, {"VPA125F", ["ART 042", "ART 013"]},
          {"RG248", ["ACCTG 097", "ACCTG 022", "ACCTG 020"]},
          {"RE301", ["BUS 009", "LA 050", "ESL 346"]}, {"C104", ["MATH 311"]},
          {"RF234", ["COMSC 076", "CIT 010", "BIS 107", "ACCTG 030"]},
          {"RE311", ["PSYCH 092", "HIST 010A"]},
          {"AD211",
            ["MATH 061", "CHEM 030B", "CHEM 030A", "CHEM 001B", "CHEM 001A"]},
          {"RF241", ["CIT 050", "CIT 042", "CIT 020", "PSYCH 018"]}],
        HashDict.new))
  end

  defp one_elem_hash do
    HashDict.put HashDict.new, "RF141", ["ENGL 033"]
  end
end
