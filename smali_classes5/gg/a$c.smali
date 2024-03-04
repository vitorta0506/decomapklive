.class Lgg/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgg/a$c;->a:Ljava/lang/reflect/Method;

    .line 4
    iput-object p2, p0, Lgg/a$c;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lgg/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lgg/a$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method static synthetic a(Lgg/a$c;Lcom/google/auth/Credentials;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lgg/a$c;->b(Lcom/google/auth/Credentials;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/google/auth/Credentials;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lgg/a$c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lgg/a$c;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
