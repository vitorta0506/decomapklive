.class public Lv6/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/d3;

.field private final b:Lv6/c$g;

.field private c:Z

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method private constructor <init>(Lcom/google/protobuf/d3;Lv6/c$g;ZLjava/util/Set;ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/d3;",
            "Lv6/c$g;",
            "Z",
            "Ljava/util/Set<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lv6/c$d;->a:Lcom/google/protobuf/d3;

    .line 4
    iput-object p2, p0, Lv6/c$d;->b:Lv6/c$g;

    .line 5
    iput-boolean p3, p0, Lv6/c$d;->c:Z

    .line 6
    iput-object p4, p0, Lv6/c$d;->d:Ljava/util/Set;

    .line 7
    iput-boolean p5, p0, Lv6/c$d;->e:Z

    .line 8
    iput-boolean p6, p0, Lv6/c$d;->f:Z

    .line 9
    iput-boolean p7, p0, Lv6/c$d;->g:Z

    .line 10
    iput-boolean p8, p0, Lv6/c$d;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/d3;Lv6/c$g;ZLjava/util/Set;ZZZZLv6/c$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lv6/c$d;-><init>(Lcom/google/protobuf/d3;Lv6/c$g;ZLjava/util/Set;ZZZZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/r1;Ljava/lang/Appendable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v10, Lv6/c$e;

    iget-object v1, p0, Lv6/c$d;->a:Lcom/google/protobuf/d3;

    iget-object v2, p0, Lv6/c$d;->b:Lv6/c$g;

    iget-boolean v3, p0, Lv6/c$d;->c:Z

    iget-object v4, p0, Lv6/c$d;->d:Ljava/util/Set;

    iget-boolean v5, p0, Lv6/c$d;->e:Z

    iget-boolean v7, p0, Lv6/c$d;->f:Z

    iget-boolean v8, p0, Lv6/c$d;->g:Z

    iget-boolean v9, p0, Lv6/c$d;->h:Z

    move-object v0, v10

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lv6/c$e;-><init>(Lcom/google/protobuf/d3;Lv6/c$g;ZLjava/util/Set;ZLjava/lang/Appendable;ZZZ)V

    .line 2
    invoke-virtual {v10, p1}, Lv6/c$e;->j(Lcom/google/protobuf/r1;)V

    return-void
.end method

.method public b(Lcom/google/protobuf/r1;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Lv6/c$d;->a(Lcom/google/protobuf/r1;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 5
    throw p1
.end method

.method public c(Lcom/google/protobuf/d3;)Lv6/c$d;
    .locals 11

    .line 1
    iget-object v0, p0, Lv6/c$d;->b:Lv6/c$g;

    invoke-static {}, Lv6/c$g;->c()Lv6/c$g;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lv6/c$d;->a:Lcom/google/protobuf/d3;

    .line 2
    invoke-static {}, Lcom/google/protobuf/d3;->d()Lcom/google/protobuf/d3;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lv6/c$d;

    iget-object v4, p0, Lv6/c$d;->b:Lv6/c$g;

    iget-boolean v5, p0, Lv6/c$d;->c:Z

    iget-object v6, p0, Lv6/c$d;->d:Ljava/util/Set;

    iget-boolean v7, p0, Lv6/c$d;->e:Z

    iget-boolean v8, p0, Lv6/c$d;->f:Z

    iget-boolean v9, p0, Lv6/c$d;->g:Z

    iget-boolean v10, p0, Lv6/c$d;->h:Z

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lv6/c$d;-><init>(Lcom/google/protobuf/d3;Lv6/c$g;ZLjava/util/Set;ZZZZ)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one registry is allowed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
