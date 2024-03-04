.class final Ln1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/c<",
        "Lr1/a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln1/a$a;

.field private static final b:Ld6/b;

.field private static final c:Ld6/b;

.field private static final d:Ld6/b;

.field private static final e:Ld6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln1/a$a;

    invoke-direct {v0}, Ln1/a$a;-><init>()V

    sput-object v0, Ln1/a$a;->a:Ln1/a$a;

    const-string/jumbo v0, "window"

    .line 2
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Ln1/a$a;->b:Ld6/b;

    const-string v0, "logSourceMetrics"

    .line 8
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Ln1/a$a;->c:Ld6/b;

    const-string v0, "globalMetrics"

    .line 14
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x3

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Ln1/a$a;->d:Ld6/b;

    const-string v0, "appNamespace"

    .line 20
    invoke-static {v0}, Ld6/b;->a(Ljava/lang/String;)Ld6/b$b;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x4

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ld6/b$b;->b(Ljava/lang/annotation/Annotation;)Ld6/b$b;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ld6/b$b;->a()Ld6/b;

    move-result-object v0

    sput-object v0, Ln1/a$a;->e:Ld6/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lr1/a;

    check-cast p2, Ld6/d;

    invoke-virtual {p0, p1, p2}, Ln1/a$a;->b(Lr1/a;Ld6/d;)V

    return-void
.end method

.method public b(Lr1/a;Ld6/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ln1/a$a;->b:Ld6/b;

    invoke-virtual {p1}, Lr1/a;->d()Lr1/e;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 2
    sget-object v0, Ln1/a$a;->c:Ld6/b;

    invoke-virtual {p1}, Lr1/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 3
    sget-object v0, Ln1/a$a;->d:Ld6/b;

    invoke-virtual {p1}, Lr1/a;->b()Lr1/b;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    .line 4
    sget-object v0, Ln1/a$a;->e:Ld6/b;

    invoke-virtual {p1}, Lr1/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/d;->d(Ld6/b;Ljava/lang/Object;)Ld6/d;

    return-void
.end method
