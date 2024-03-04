.class final Lcom/google/common/collect/l7$a;
.super Lcom/google/common/collect/t6$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/t6$e<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/common/collect/t6$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t6$e<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/t6$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I",
            "Lcom/google/common/collect/t6$e<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/t6$e;-><init>(Ljava/lang/Object;I)V

    .line 2
    iput-object p3, p0, Lcom/google/common/collect/l7$a;->c:Lcom/google/common/collect/t6$e;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/t6$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/t6$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l7$a;->c:Lcom/google/common/collect/t6$e;

    return-object v0
.end method
