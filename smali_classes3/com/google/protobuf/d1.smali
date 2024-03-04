.class final Lcom/google/protobuf/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/o2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/d1$b;
    }
.end annotation


# static fields
.field private static final b:Lcom/google/protobuf/n1;


# instance fields
.field private final a:Lcom/google/protobuf/n1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/d1$a;

    invoke-direct {v0}, Lcom/google/protobuf/d1$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/d1;->b:Lcom/google/protobuf/n1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d1;->b()Lcom/google/protobuf/n1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/d1;-><init>(Lcom/google/protobuf/n1;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/n1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 3
    invoke-static {p1, v0}, Lcom/google/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/n1;

    iput-object p1, p0, Lcom/google/protobuf/d1;->a:Lcom/google/protobuf/n1;

    return-void
.end method

.method private static b()Lcom/google/protobuf/n1;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/d1$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/protobuf/n1;

    .line 2
    invoke-static {}, Lcom/google/protobuf/r0;->c()Lcom/google/protobuf/r0;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/protobuf/d1;->c()Lcom/google/protobuf/n1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/protobuf/d1$b;-><init>([Lcom/google/protobuf/n1;)V

    return-object v0
.end method

.method private static c()Lcom/google/protobuf/n1;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Lcom/google/protobuf/s;

    sget v1, Lcom/google/protobuf/s;->d:I

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/n1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    sget-object v0, Lcom/google/protobuf/d1;->b:Lcom/google/protobuf/n1;

    return-object v0
.end method

.method private static d(Lcom/google/protobuf/m1;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/protobuf/m1;->c()Lcom/google/protobuf/ProtoSyntax;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Ljava/lang/Class;Lcom/google/protobuf/m1;)Lcom/google/protobuf/n2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/m1;",
            ")",
            "Lcom/google/protobuf/n2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/d1;->d(Lcom/google/protobuf/m1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/a2;->b()Lcom/google/protobuf/x1;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/google/protobuf/a1;->b()Lcom/google/protobuf/a1;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/google/protobuf/p2;->O()Lcom/google/protobuf/g3;

    move-result-object v5

    .line 6
    invoke-static {}, Lcom/google/protobuf/j0;->b()Lcom/google/protobuf/g0;

    move-result-object v6

    .line 7
    invoke-static {}, Lcom/google/protobuf/k1;->b()Lcom/google/protobuf/h1;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 8
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/s1;->R(Ljava/lang/Class;Lcom/google/protobuf/m1;Lcom/google/protobuf/x1;Lcom/google/protobuf/a1;Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Lcom/google/protobuf/h1;)Lcom/google/protobuf/s1;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/protobuf/a2;->b()Lcom/google/protobuf/x1;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/google/protobuf/a1;->b()Lcom/google/protobuf/a1;

    move-result-object v3

    .line 11
    invoke-static {}, Lcom/google/protobuf/p2;->O()Lcom/google/protobuf/g3;

    move-result-object v4

    const/4 v5, 0x0

    .line 12
    invoke-static {}, Lcom/google/protobuf/k1;->b()Lcom/google/protobuf/h1;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/s1;->R(Ljava/lang/Class;Lcom/google/protobuf/m1;Lcom/google/protobuf/x1;Lcom/google/protobuf/a1;Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Lcom/google/protobuf/h1;)Lcom/google/protobuf/s1;

    move-result-object p0

    :goto_0
    return-object p0

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/d1;->d(Lcom/google/protobuf/m1;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcom/google/protobuf/a2;->a()Lcom/google/protobuf/x1;

    move-result-object v3

    .line 16
    invoke-static {}, Lcom/google/protobuf/a1;->a()Lcom/google/protobuf/a1;

    move-result-object v4

    .line 17
    invoke-static {}, Lcom/google/protobuf/p2;->I()Lcom/google/protobuf/g3;

    move-result-object v5

    .line 18
    invoke-static {}, Lcom/google/protobuf/j0;->a()Lcom/google/protobuf/g0;

    move-result-object v6

    .line 19
    invoke-static {}, Lcom/google/protobuf/k1;->a()Lcom/google/protobuf/h1;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/s1;->R(Ljava/lang/Class;Lcom/google/protobuf/m1;Lcom/google/protobuf/x1;Lcom/google/protobuf/a1;Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Lcom/google/protobuf/h1;)Lcom/google/protobuf/s1;

    move-result-object p0

    goto :goto_1

    .line 21
    :cond_2
    invoke-static {}, Lcom/google/protobuf/a2;->a()Lcom/google/protobuf/x1;

    move-result-object v2

    .line 22
    invoke-static {}, Lcom/google/protobuf/a1;->a()Lcom/google/protobuf/a1;

    move-result-object v3

    .line 23
    invoke-static {}, Lcom/google/protobuf/p2;->J()Lcom/google/protobuf/g3;

    move-result-object v4

    const/4 v5, 0x0

    .line 24
    invoke-static {}, Lcom/google/protobuf/k1;->a()Lcom/google/protobuf/h1;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 25
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/s1;->R(Ljava/lang/Class;Lcom/google/protobuf/m1;Lcom/google/protobuf/x1;Lcom/google/protobuf/a1;Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Lcom/google/protobuf/h1;)Lcom/google/protobuf/s1;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/protobuf/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/n2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/p2;->K(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/d1;->a:Lcom/google/protobuf/n1;

    invoke-interface {v0, p1}, Lcom/google/protobuf/n1;->a(Ljava/lang/Class;)Lcom/google/protobuf/m1;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/m1;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/protobuf/p2;->O()Lcom/google/protobuf/g3;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/protobuf/j0;->b()Lcom/google/protobuf/g0;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Lcom/google/protobuf/m1;->b()Lcom/google/protobuf/o1;

    move-result-object v0

    .line 8
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/t1;->m(Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Lcom/google/protobuf/o1;)Lcom/google/protobuf/t1;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/protobuf/p2;->I()Lcom/google/protobuf/g3;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/protobuf/j0;->a()Lcom/google/protobuf/g0;

    move-result-object v1

    .line 11
    invoke-interface {v0}, Lcom/google/protobuf/m1;->b()Lcom/google/protobuf/o1;

    move-result-object v0

    .line 12
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/t1;->m(Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Lcom/google/protobuf/o1;)Lcom/google/protobuf/t1;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    invoke-static {p1, v0}, Lcom/google/protobuf/d1;->e(Ljava/lang/Class;Lcom/google/protobuf/m1;)Lcom/google/protobuf/n2;

    move-result-object p1

    return-object p1
.end method
