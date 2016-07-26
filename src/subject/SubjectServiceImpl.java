package subject;

public class SubjectServiceImpl implements SubjectService{
	SubjectDAO dao = SubjectDAO.getInstance();
	private static SubjectServiceImpl instance
		= new SubjectServiceImpl();
	private SubjectServiceImpl() {
		
	}
	public static SubjectServiceImpl getInstance() {
		return instance;
	}

	@Override
	public void insert(SubjectBean s) {
		dao.insert(s);
	}
}