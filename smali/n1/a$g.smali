.class final Ln1/a$g;
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
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/c<",
        "Lr1/e;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ln1/a$g;

.field private static final b:Ld6/b;

.field private static final c:Ld6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln1/a$g;

    invoke-direct {v0}, Ln1/a$g;-><init>()V

    sput-object v0, Ln1/a$g;->a:Ln1/a$g;

    const-string v0, "startMs"

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

    sput-object v0, Ln1/a$g;->b:Ld6/b;

    const-string v0, "endMs"

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

    sput-object v0, Ln1/a$g;->c:Ld6/b;

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

    check-cast p1, Lr1/e;

    check-cast p2, Ld6/d;

    invoke-virtual {p0, p1, p2}, Ln1/a$g;->b(Lr1/e;Ld6/d;)V

    return-void
.end method

.method public b(Lr1/e;Ld6/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ln1/a$g;->b:Ld6/b;

    invoke-virtual {p1}, Lr1/e;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    .line 2
    sget-object v0, Ln1/a$g;->c:Ld6/b;

    invoke-virtual {p1}, Lr1/e;->a()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/d;->b(Ld6/b;J)Ld6/d;

    return-void
.end method
