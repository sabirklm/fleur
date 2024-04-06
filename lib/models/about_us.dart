class AboutUs {
  final String? companyName;
  final String? companyDescription;
  final String? missionStatement;
  final String? visionStatement;
  final List<String>? teamMembers;
  final String? contactEmail;
  final String? contactPhone;
  final String? contactAddress;

  AboutUs({
    this.companyName,
    this.companyDescription,
    this.missionStatement,
    this.visionStatement,
    this.teamMembers,
    this.contactEmail,
    this.contactPhone,
    this.contactAddress,
  });
}

class PrivacyPolicy {
  final String? companyName;
  final String? privacyDescription;
  final String? informationCollection;
  final String? informationUsage;
  final String? informationProtection;
  final String? cookieUsage;
  final String? dataRetention;
  final String? yourRights;
  final String? changesToPolicy;
  final String? contactInformation;

  PrivacyPolicy({
    this.companyName,
    this.privacyDescription,
    this.informationCollection,
    this.informationUsage,
    this.informationProtection,
    this.cookieUsage,
    this.dataRetention,
    this.yourRights,
    this.changesToPolicy,
    this.contactInformation,
  });
}

var mockPrivacyPolicy = PrivacyPolicy(
  companyName: "Fleeur",
  privacyDescription:
      "At Fleeur, we are committed to protecting the privacy and security of our users. This Privacy Policy outlines how we collect, use, protect, and retain your personal information.",
  informationCollection:
      "We collect information you provide directly to us, such as when you create an account, submit a query, or interact with our services. We may also collect information automatically when you use our website or mobile app, such as your IP address, device information, and browsing activity.",
  informationUsage:
      "We use the information we collect to provide, maintain, and improve our services, personalize content, communicate with you, and fulfill your requests. We may also use your information to detect, prevent, and investigate fraudulent or illegal activities.",
  informationProtection:
      "We take measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction. However, no method of transmission over the internet or electronic storage is completely secure, so we cannot guarantee absolute security.",
  cookieUsage:
      "We use cookies and similar technologies to analyze trends, administer our website, track users' movements, and gather demographic information. You can control cookies through your browser settings and opt out of certain types of tracking.",
  dataRetention:
      "We retain your personal information for as long as necessary to fulfill the purposes outlined in this Privacy Policy, unless a longer retention period is required or permitted by law.",
  yourRights:
      "You have the right to access, update, or delete your personal information. You can also object to the processing of your information or request restrictions on its use. Please contact us if you have any questions or concerns about your privacy rights.",
  changesToPolicy:
      "We may update this Privacy Policy from time to time to reflect changes in our practices or legal requirements. We will notify you of any material changes and obtain your consent if required by law.",
  contactInformation:
      "If you have any questions, comments, or concerns about our Privacy Policy or practices, please contact us at privacy@fleeur.com.",
);

var mockAboutUs = AboutUs(
  companyName: "Fleeur",
  companyDescription:
      "Fleeur is your one-stop destination for exploring and discovering a wide range of cars and bikes. Whether you're a car enthusiast or a bike lover, we have something for everyone. With our user-friendly interface and extensive collection of vehicles, finding your dream ride has never been easier.",
  missionStatement:
      "Our mission at Fleeur is to provide a seamless and enjoyable experience for individuals looking to buy, sell, or explore cars and bikes. We strive to offer a comprehensive platform where users can discover the latest vehicles, connect with sellers, and make informed decisions.",
  visionStatement:
      "At Fleeur, we envision becoming the go-to platform for car and bike enthusiasts worldwide. We aim to foster a community of passionate individuals who share their love for automobiles and motorcycles. Through innovation, integrity, and excellence, we aspire to redefine the way people experience and interact with vehicles.",
  teamMembers: [
    "John Doe - CEO & Founder",
    "Jane Smith - Head of Operations",
    "Michael Johnson - Head of Technology",
    "Emily Brown - Marketing Manager",
    "David Wilson - Sales Director"
  ],
  contactEmail: "info@fleeur.com",
  contactPhone: "+1 (123) 456-7890",
  contactAddress: "123 Main Street, Cityville, State, Country",
);
