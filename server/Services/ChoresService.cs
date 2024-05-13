



public class ChoresService
{
    private readonly ChoresRepository _choreRepo;

    public ChoresService(ChoresRepository choreRepo)
    {
        _choreRepo = choreRepo;
    }

    internal Chore CreateChore(Chore choreData)
    {
        Chore chore = _choreRepo.CreateChore(choreData);
        return chore;
    }

    internal string DestroyChore(int choreId)
    {
        Chore choreToDestroy = GetChoreById(choreId);

        _choreRepo.DestroyChore(choreId);

        return $"{choreToDestroy.Name} doesn't need to be done anymore";
    }

    internal List<Chore> GetAllChores()
    {
        List<Chore> chores = _choreRepo.GetAllChores();
        return chores;
    }

    internal Chore GetChoreById(int choreId)
    {
        Chore chore = _choreRepo.GetChoreById(choreId);
        return chore;
    }
}