.class public final synthetic Lcom/google/common/collect/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/k6$e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/k6$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/t1;->a:Lcom/google/common/collect/k6$e;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/t1;->a:Lcom/google/common/collect/k6$e;

    invoke-virtual {v0}, Lcom/google/common/collect/k6$e;->e()Lcom/google/common/collect/x5;

    move-result-object v0

    return-object v0
.end method
