.class public final synthetic Lcom/google/common/collect/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/k6$g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/k6$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/u1;->a:Lcom/google/common/collect/k6$g;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/u1;->a:Lcom/google/common/collect/k6$g;

    invoke-virtual {v0}, Lcom/google/common/collect/k6$g;->e()Lcom/google/common/collect/u7;

    move-result-object v0

    return-object v0
.end method
