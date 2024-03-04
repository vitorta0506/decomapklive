.class Lcom/google/common/collect/m4;
.super Lcom/google/common/collect/h4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m4$a;,
        Lcom/google/common/collect/m4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h4<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/h4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/collect/p2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static a(I)[Lcom/google/common/collect/m4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation

    new-array p0, p0, [Lcom/google/common/collect/m4;

    return-object p0
.end method


# virtual methods
.method b()Lcom/google/common/collect/m4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method e()Lcom/google/common/collect/m4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
