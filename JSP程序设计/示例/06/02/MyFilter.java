import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
/**
 * 过滤器
 */
public class MyFilter implements Filter {
	// 初始化方法
	public void init(FilterConfig fConfig) throws ServletException {
		// 初始化处理
	}
	// 过滤处理方法
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 过滤处理
		chain.doFilter(request, response);
	}
	// 销毁方法
	public void destroy() {
		// 释放资源
	}
}
