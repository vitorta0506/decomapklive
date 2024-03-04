package com.google.api.pathtemplate;

import java.util.Iterator;
import java.util.Stack;
/* loaded from: classes2.dex */
public class ValidationException extends IllegalArgumentException {
    private static ThreadLocal<Stack<b<String>>> contextLocal = new ThreadLocal<>();

    /* loaded from: classes2.dex */
    static class a implements b<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11451a;

        a(String str) {
            this.f11451a = str;
        }

        @Override // com.google.api.pathtemplate.ValidationException.b
        /* renamed from: a */
        public String get() {
            return this.f11451a;
        }
    }

    /* loaded from: classes2.dex */
    public interface b<T> {
        T get();
    }

    public ValidationException(String str, Object... objArr) {
        super(message(contextLocal.get(), str, objArr));
    }

    private static String message(Stack<b<String>> stack, String str, Object... objArr) {
        if (stack != null && !stack.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            Iterator<b<String>> it = stack.iterator();
            while (it.hasNext()) {
                sb2.append(it.next().get() + ": ");
            }
            return sb2.toString() + String.format(str, objArr);
        }
        return String.format(str, objArr);
    }

    public static void popCurrentThreadValidationContext() {
        Stack<b<String>> stack = contextLocal.get();
        if (stack != null) {
            stack.pop();
        }
    }

    public static void pushCurrentThreadValidationContext(b<String> bVar) {
        Stack<b<String>> stack = contextLocal.get();
        if (stack == null) {
            stack = new Stack<>();
            contextLocal.set(stack);
        }
        stack.push(bVar);
    }

    public static void pushCurrentThreadValidationContext(String str) {
        pushCurrentThreadValidationContext(new a(str));
    }
}
