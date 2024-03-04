.class Lcom/google/common/collect/m4$b;
.super Lcom/google/common/collect/m4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m4<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient c:Lcom/google/common/collect/m4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/m4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/m4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iput-object p3, p0, Lcom/google/common/collect/m4$b;->c:Lcom/google/common/collect/m4;

    return-void
.end method


# virtual methods
.method final b()Lcom/google/common/collect/m4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m4$b;->c:Lcom/google/common/collect/m4;

    return-object v0
.end method

.method final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
