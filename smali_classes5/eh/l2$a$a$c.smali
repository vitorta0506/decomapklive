.class abstract Leh/l2$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/l2$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILjava/util/List;Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)Leh/l2$a$a$c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/grpc/Status$Code;",
            ">;",
            "Lcom/google/protobuf/Duration;",
            "Lcom/google/protobuf/Duration;",
            "Lcom/google/protobuf/Duration;",
            ")",
            "Leh/l2$a$a$c;"
        }
    .end annotation

    .line 1
    new-instance v6, Leh/e0;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object v0, v6

    move v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Leh/e0;-><init>(ILcom/google/common/collect/ImmutableList;Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;Lcom/google/protobuf/Duration;)V

    return-object v6
.end method


# virtual methods
.method abstract b()Lcom/google/protobuf/Duration;
.end method

.method abstract c()I
.end method

.method abstract d()Lcom/google/protobuf/Duration;
.end method

.method abstract e()Lcom/google/protobuf/Duration;
.end method

.method abstract f()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation
.end method
