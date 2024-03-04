package org.greenrobot.eventbus;

import java.io.PrintStream;
import java.util.logging.Level;
import org.greenrobot.eventbus.android.AndroidComponents;
/* loaded from: classes7.dex */
public interface Logger {

    /* loaded from: classes7.dex */
    public static class Default {
        public static Logger get() {
            if (AndroidComponents.areAvailable()) {
                return AndroidComponents.get().logger;
            }
            return new SystemOutLogger();
        }
    }

    /* loaded from: classes7.dex */
    public static class JavaLogger implements Logger {
        protected final java.util.logging.Logger logger;

        public JavaLogger(String str) {
            this.logger = java.util.logging.Logger.getLogger(str);
        }

        @Override // org.greenrobot.eventbus.Logger
        public void log(Level level, String str) {
            this.logger.log(level, str);
        }

        @Override // org.greenrobot.eventbus.Logger
        public void log(Level level, String str, Throwable th2) {
            this.logger.log(level, str, th2);
        }
    }

    /* loaded from: classes7.dex */
    public static class SystemOutLogger implements Logger {
        @Override // org.greenrobot.eventbus.Logger
        public void log(Level level, String str) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
        }

        @Override // org.greenrobot.eventbus.Logger
        public void log(Level level, String str, Throwable th2) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
            th2.printStackTrace(System.out);
        }
    }

    void log(Level level, String str);

    void log(Level level, String str, Throwable th2);
}
