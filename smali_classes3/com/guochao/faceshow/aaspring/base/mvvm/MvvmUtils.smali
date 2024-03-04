.class public final Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\"\u0010\u000f\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u00012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eJ,\u0010\u0010\u001a\u00020\u00082\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005H\u0003R\"\u0010\u0003\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;",
        "",
        "()V",
        "viewBindingField",
        "Landroid/util/ArrayMap;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "find",
        "Landroidx/viewbinding/ViewBinding;",
        "finder",
        "field",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "findViewBinding",
        "viewBinding",
        "container",
        "clazz",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final viewBindingField:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->viewBindingField:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final find(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-class v0, Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<androidx.viewbinding.ViewBinding?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p3, p4, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->viewBinding(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/lang/Class;)Landroidx/viewbinding/ViewBinding;

    move-result-object p3

    .line 5
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p3

    .line 7
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Filed "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in Clazz "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a sub class of ViewBinding"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private static final viewBinding(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/lang/Class;)Landroidx/viewbinding/ViewBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/LayoutInflater;",
            "Ljava/lang/Class<",
            "Landroidx/viewbinding/ViewBinding;",
            ">;)",
            "Landroidx/viewbinding/ViewBinding;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "null cannot be cast to non-null type androidx.viewbinding.ViewBinding"

    const-string v1, "inflate"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    :try_start_0
    new-array v7, v6, [Ljava/lang/Class;

    .line 1
    const-class v8, Landroid/view/LayoutInflater;

    aput-object v8, v7, v3

    const-class v8, Landroid/view/ViewGroup;

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    .line 2
    invoke-virtual {p2, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 3
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object p0, v6, v5

    .line 4
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v6, v4

    invoke-virtual {v7, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 5
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/viewbinding/ViewBinding;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    new-array v6, v4, [Ljava/lang/Class;

    .line 6
    const-class v7, Landroid/view/LayoutInflater;

    aput-object v7, v6, v3

    const-class v7, Landroid/view/ViewGroup;

    aput-object v7, v6, v5

    .line 7
    invoke-virtual {p2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p0, v1, v5

    .line 8
    invoke-virtual {p2, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/viewbinding/ViewBinding;

    return-object p0
.end method

.method static synthetic viewBinding$default(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/lang/Class;ILjava/lang/Object;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->viewBinding(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/lang/Class;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final findViewBinding(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "null cannot be cast to non-null type java.lang.Class<kotlin.Any?>"

    const-string v1, "finder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layoutInflater"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->viewBindingField:Landroid/util/ArrayMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    .line 3
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->find(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v3, "viewBinding"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v4, "f"

    .line 5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3, p2, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->find(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    instance-of v3, v2, Ljava/lang/IllegalArgumentException;

    if-nez v3, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "fields"

    .line 10
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 11
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    .line 12
    const-class v6, Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;

    if-eqz v6, :cond_1

    .line 13
    sget-object v2, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;

    const-string v3, "_f"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, v5, p2, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->find(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    .line 14
    sget-object p2, Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;->viewBindingField:Landroid/util/ArrayMap;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_3
    throw v2
.end method
