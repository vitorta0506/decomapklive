package kotlin.jvm.internal;

import java.util.List;
import kotlin.SinceKotlin;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
/* loaded from: classes7.dex */
public class ReflectionFactory {
    private static final String KOTLIN_JVM_FUNCTIONS = "kotlin.jvm.functions.";

    public KClass createKotlinClass(Class cls) {
        return new ClassReference(cls);
    }

    public KFunction function(FunctionReference functionReference) {
        return functionReference;
    }

    public KClass getOrCreateKotlinClass(Class cls) {
        return new ClassReference(cls);
    }

    public KDeclarationContainer getOrCreateKotlinPackage(Class cls, String str) {
        return new PackageReference(cls, str);
    }

    @SinceKotlin(version = "1.6")
    public KType mutableCollectionType(KType kType) {
        TypeReference typeReference = (TypeReference) kType;
        return new TypeReference(kType.getClassifier(), kType.getArguments(), typeReference.getPlatformTypeUpperBound$kotlin_stdlib(), typeReference.getFlags$kotlin_stdlib() | 2);
    }

    public KMutableProperty0 mutableProperty0(MutablePropertyReference0 mutablePropertyReference0) {
        return mutablePropertyReference0;
    }

    public KMutableProperty1 mutableProperty1(MutablePropertyReference1 mutablePropertyReference1) {
        return mutablePropertyReference1;
    }

    public KMutableProperty2 mutableProperty2(MutablePropertyReference2 mutablePropertyReference2) {
        return mutablePropertyReference2;
    }

    @SinceKotlin(version = "1.6")
    public KType nothingType(KType kType) {
        TypeReference typeReference = (TypeReference) kType;
        return new TypeReference(kType.getClassifier(), kType.getArguments(), typeReference.getPlatformTypeUpperBound$kotlin_stdlib(), typeReference.getFlags$kotlin_stdlib() | 4);
    }

    @SinceKotlin(version = "1.6")
    public KType platformType(KType kType, KType kType2) {
        return new TypeReference(kType.getClassifier(), kType.getArguments(), kType2, ((TypeReference) kType).getFlags$kotlin_stdlib());
    }

    public KProperty0 property0(PropertyReference0 propertyReference0) {
        return propertyReference0;
    }

    public KProperty1 property1(PropertyReference1 propertyReference1) {
        return propertyReference1;
    }

    public KProperty2 property2(PropertyReference2 propertyReference2) {
        return propertyReference2;
    }

    @SinceKotlin(version = "1.1")
    public String renderLambdaToString(Lambda lambda) {
        return renderLambdaToString((FunctionBase) lambda);
    }

    @SinceKotlin(version = "1.4")
    public void setUpperBounds(KTypeParameter kTypeParameter, List<KType> list) {
        ((TypeParameterReference) kTypeParameter).setUpperBounds(list);
    }

    @SinceKotlin(version = "1.4")
    public KType typeOf(KClassifier kClassifier, List<KTypeProjection> list, boolean z10) {
        return new TypeReference(kClassifier, list, z10);
    }

    @SinceKotlin(version = "1.4")
    public KTypeParameter typeParameter(Object obj, String str, KVariance kVariance, boolean z10) {
        return new TypeParameterReference(obj, str, kVariance, z10);
    }

    public KClass createKotlinClass(Class cls, String str) {
        return new ClassReference(cls);
    }

    public KClass getOrCreateKotlinClass(Class cls, String str) {
        return new ClassReference(cls);
    }

    @SinceKotlin(version = "1.3")
    public String renderLambdaToString(FunctionBase functionBase) {
        String obj = functionBase.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith(KOTLIN_JVM_FUNCTIONS) ? obj.substring(21) : obj;
    }
}
