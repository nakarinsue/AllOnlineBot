from faker import Faker

class FakerLibrary:
    def __init__(self):
        self.fake = Faker()

    def generate_fake_name(self):
        """ สร้างชื่อปลอม """
        return self.fake.name()

    def generate_fake_email(self):
        """ สร้างอีเมลปลอม """
        return self.fake.email()

    def generate_fake_phone_number(self):
        """ สร้างหมายเลขโทรศัพท์ปลอม """
        return self.fake.phone_number()

    def generate_fake_address(self):
        """ สร้างที่อยู่ปลอม """
        return self.fake.address()

    def generate_credit_card(self):
        """ สร้างข้อมูลบัตรเครดิตปลอม """
        return {
            "number": str(self.fake.credit_card_number()),
            "expiry_date": str(self.fake.credit_card_expire()),
            "cvv": str(self.fake.credit_card_security_code())
        }
