

using std::cout;

int main()
{
    SetConsoleCP(CP_UTF8);
    SetConsoleOutputCP(CP_UTF8);

    auto db = DataBase();

    db.Start();

    db.AddCriminal(new CriminalPerson("Name", "Surname", CriminalStatus::PRISONER_CRIMINAL));
    db.Finish();

    return 0;
}
