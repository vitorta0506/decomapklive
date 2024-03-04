.class abstract Leh/l2$a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/l2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/l2$a$b$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Leh/l2$a$b$a;Ljava/util/List;Lfh/h;)Leh/l2$a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/l2$a$b$a;",
            "Ljava/util/List<",
            "Lfh/i;",
            ">;",
            "Lfh/h;",
            ")",
            "Leh/l2$a$b;"
        }
    .end annotation

    .line 1
    new-instance v0, Leh/f0;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Leh/f0;-><init>(Leh/l2$a$b$a;Lcom/google/common/collect/ImmutableList;Lfh/h;)V

    return-object v0
.end method


# virtual methods
.method abstract b()Lfh/h;
.end method

.method abstract c()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lfh/i;",
            ">;"
        }
    .end annotation
.end method

.method abstract d()Leh/l2$a$b$a;
.end method
