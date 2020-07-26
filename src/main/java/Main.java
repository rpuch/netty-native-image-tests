import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.util.concurrent.DefaultThreadFactory;

/**
 * @author rpuch
 */
public class Main {
    public static void main(String[] args) {
        NioEventLoopGroup group = new NioEventLoopGroup(1, new DefaultThreadFactory("netty"));
        System.out.println(group);
    }
}
