.class public final synthetic Lcom/google/common/collect/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/l5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/l5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/k5;->a:Lcom/google/common/collect/l5;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/k5;->a:Lcom/google/common/collect/l5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/l5;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
