.class final Leh/p2$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/p2$j$b;,
        Leh/p2$j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Leh/p2$j$a;

.field private final c:J

.field private final d:Lcom/google/protobuf/Any;

.field private final e:Leh/p2$j$b;


# direct methods
.method private constructor <init>(Leh/p2$j$a;Ljava/lang/String;JLcom/google/protobuf/Any;Leh/p2$j$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "status"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/p2$j$a;

    iput-object p1, p0, Leh/p2$j;->b:Leh/p2$j$a;

    const-string p1, "version"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/p2$j;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Leh/p2$j;->c:J

    .line 5
    iput-object p5, p0, Leh/p2$j;->d:Lcom/google/protobuf/Any;

    .line 6
    iput-object p6, p0, Leh/p2$j;->e:Leh/p2$j$b;

    return-void
.end method

.method static d(Lcom/google/protobuf/Any;Ljava/lang/String;J)Leh/p2$j;
    .locals 8

    const-string v0, "rawResource"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Leh/p2$j;

    sget-object v2, Leh/p2$j$a;->d:Leh/p2$j$a;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Leh/p2$j;-><init>(Leh/p2$j$a;Ljava/lang/String;JLcom/google/protobuf/Any;Leh/p2$j$b;)V

    return-object v0
.end method

.method static e()Leh/p2$j;
    .locals 8

    new-instance v7, Leh/p2$j;

    sget-object v1, Leh/p2$j$a;->c:Leh/p2$j$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Leh/p2$j;-><init>(Leh/p2$j$a;Ljava/lang/String;JLcom/google/protobuf/Any;Leh/p2$j$b;)V

    return-object v7
.end method

.method static f(Leh/p2$j;Ljava/lang/String;JLjava/lang/String;)Leh/p2$j;
    .locals 14

    const-string v0, "metadata"

    move-object v1, p0

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Leh/p2$j;

    sget-object v2, Leh/p2$j$a;->e:Leh/p2$j$a;

    .line 3
    invoke-virtual {p0}, Leh/p2$j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Leh/p2$j;->b()J

    move-result-wide v4

    invoke-virtual {p0}, Leh/p2$j;->a()Lcom/google/protobuf/Any;

    move-result-object v6

    new-instance v13, Leh/p2$j$b;

    const/4 v12, 0x0

    move-object v7, v13

    move-object v8, p1

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Leh/p2$j$b;-><init>(Ljava/lang/String;JLjava/lang/String;Leh/p2$a;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Leh/p2$j;-><init>(Leh/p2$j$a;Ljava/lang/String;JLcom/google/protobuf/Any;Leh/p2$j$b;)V

    return-object v0
.end method

.method static g()Leh/p2$j;
    .locals 8

    new-instance v7, Leh/p2$j;

    sget-object v1, Leh/p2$j$a;->b:Leh/p2$j$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Leh/p2$j;-><init>(Leh/p2$j$a;Ljava/lang/String;JLcom/google/protobuf/Any;Leh/p2$j$b;)V

    return-object v7
.end method

.method static h()Leh/p2$j;
    .locals 8

    new-instance v7, Leh/p2$j;

    sget-object v1, Leh/p2$j$a;->a:Leh/p2$j$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Leh/p2$j;-><init>(Leh/p2$j$a;Ljava/lang/String;JLcom/google/protobuf/Any;Leh/p2$j$b;)V

    return-object v7
.end method


# virtual methods
.method a()Lcom/google/protobuf/Any;
    .locals 1

    iget-object v0, p0, Leh/p2$j;->d:Lcom/google/protobuf/Any;

    return-object v0
.end method

.method b()J
    .locals 2

    iget-wide v0, p0, Leh/p2$j;->c:J

    return-wide v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/p2$j;->a:Ljava/lang/String;

    return-object v0
.end method
