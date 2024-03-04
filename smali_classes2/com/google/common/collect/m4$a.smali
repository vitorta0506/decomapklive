.class final Lcom/google/common/collect/m4$a;
.super Lcom/google/common/collect/m4$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m4$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient d:Lcom/google/common/collect/m4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/m4;Lcom/google/common/collect/m4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/m4$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/m4;)V

    .line 2
    iput-object p4, p0, Lcom/google/common/collect/m4$a;->d:Lcom/google/common/collect/m4;

    return-void
.end method


# virtual methods
.method e()Lcom/google/common/collect/m4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m4<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m4$a;->d:Lcom/google/common/collect/m4;

    return-object v0
.end method
