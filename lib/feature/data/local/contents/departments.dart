import 'package:dufs/feature/data/local/contents/languages.dart';

enum DepartmentContent {
  all(
    key: "all",
    enValue: "All",
    bnValue: "সব",
  ),
  bangla(
    key: "bangla",
    enValue: "Bangla",
    bnValue: "বাংলা",
  ),
  english(
    key: "english",
    enValue: "English",
    bnValue: "ইংরেজি",
  ),
  accounting(
    key: "accounting",
    enValue: "Accounting",
    bnValue: "",
  ),
  history(
    key: "history",
    enValue: "History",
    bnValue: "",
  ),
  geography(
    key: "geography",
    enValue: "Geography",
    bnValue: "",
  ),
  pharmacy(
    key: "pharmacy",
    enValue: "Pharmacy",
    bnValue: "",
  ),
  biochemistry(
    key: "biochemistry",
    enValue: "Biochemistry",
    bnValue: "",
  ),
  statistics(
    key: "statistics",
    enValue: "Statistics",
    bnValue: "",
  ),
  physics(
    key: "physics",
    enValue: "Physics",
    bnValue: "",
  ),
  management(
    key: "management",
    enValue: "Management",
    bnValue: "",
  ),
  fineArts(
    key: "fine_arts",
    enValue: "Fine Arts",
    bnValue: "",
  ),
  psychology(
    key: "psychology",
    enValue: "Psychology",
    bnValue: "",
  ),
  massComAndJournalism(
    key: "mass_com_&_journalism",
    enValue: "Mass Com. & Journalism",
    bnValue: "",
  ),
  culture(
    key: "culture",
    enValue: "Culture",
    bnValue: "",
  ),
  arabicLiterature(
    key: "arabic_literature",
    enValue: "Arabic Literature",
    bnValue: "",
  ),
  anthropology(
    key: "anthropology",
    enValue: "Anthropology",
    bnValue: "",
  ),
  geology(
    key: "geology",
    enValue: "geology",
    bnValue: "",
  ),
  historyAndCultureOfIslam(
    key: "history_&_culture_of_islam",
    enValue: "History & Culture Of Islam",
    bnValue: "",
  ),
  islamicStudies(
    key: "islamic_studies",
    enValue: "Islamic Studies",
    bnValue: "",
  ),
  philosophy(
    key: "philosophy",
    enValue: "Philosophy",
    bnValue: "",
  ),
  urduAndPersian(
    key: "urdu_&_persian",
    enValue: "Urdu & Persian",
    bnValue: "",
  ),
  law(
    key: "law",
    enValue: "Law",
    bnValue: "",
  ),
  economics(
    key: "economics",
    enValue: "Economics",
    bnValue: "",
  ),
  instituteOfEducationAndResearch(
    key: "institute_of_education_&_research",
    enValue: "Institute Of Education & Research",
    bnValue: "",
  ),
  marketing(
    key: "marketing",
    enValue: "Marketing",
    bnValue: "",
  ),
  internationalRelations(
    key: "international_relations",
    enValue: "International Relations",
    bnValue: "",
  );

  final String enValue, bnValue, key;

  const DepartmentContent({
    required this.key,
    required this.enValue,
    required this.bnValue,
  });
}

extension Department on DepartmentContent {
  String value(SupportingLanguage language) {
    switch (language) {
      case SupportingLanguage.bn:
        return bnValue;
      case SupportingLanguage.en:
      default:
        return enValue;
    }
  }
}
