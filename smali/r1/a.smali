.class public final Lr1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/a$a;
    }
.end annotation


# static fields
.field private static final e:Lr1/a;


# instance fields
.field private final a:Lr1/e;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr1/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lr1/b;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/a$a;

    invoke-direct {v0}, Lr1/a$a;-><init>()V

    invoke-virtual {v0}, Lr1/a$a;->b()Lr1/a;

    move-result-object v0

    sput-object v0, Lr1/a;->e:Lr1/a;

    return-void
.end method

.method constructor <init>(Lr1/e;Ljava/util/List;Lr1/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr1/e;",
            "Ljava/util/List<",
            "Lr1/c;",
            ">;",
            "Lr1/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr1/a;->a:Lr1/e;

    .line 3
    iput-object p2, p0, Lr1/a;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lr1/a;->c:Lr1/b;

    .line 5
    iput-object p4, p0, Lr1/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static e()Lr1/a$a;
    .locals 1

    new-instance v0, Lr1/a$a;

    invoke-direct {v0}, Lr1/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x4
    .end annotation

    iget-object v0, p0, Lr1/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lr1/b;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x3
    .end annotation

    iget-object v0, p0, Lr1/a;->c:Lr1/b;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr1/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr1/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()Lr1/e;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    iget-object v0, p0, Lr1/a;->a:Lr1/e;

    return-object v0
.end method

.method public f()[B
    .locals 1

    invoke-static {p0}, Ln1/l;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
