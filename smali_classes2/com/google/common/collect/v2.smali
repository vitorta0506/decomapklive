.class public final synthetic Lcom/google/common/collect/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/s2$d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/s2$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/v2;->a:Lcom/google/common/collect/s2$d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/v2;->a:Lcom/google/common/collect/s2$d;

    invoke-static {v0, p1}, Lcom/google/common/collect/s2$d;->b(Lcom/google/common/collect/s2$d;Ljava/lang/Object;)V

    return-void
.end method
