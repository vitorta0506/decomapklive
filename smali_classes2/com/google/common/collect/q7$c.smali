.class final Lcom/google/common/collect/q7$c;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/q7;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/q7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/q7$c;->a:Lcom/google/common/collect/q7;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/q7;Lcom/google/common/collect/q7$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/q7$c;-><init>(Lcom/google/common/collect/q7;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q7$c;->a:Lcom/google/common/collect/q7;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q7;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/q7$c;->a:Lcom/google/common/collect/q7;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableTable;->size()I

    move-result v0

    return v0
.end method
