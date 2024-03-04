.class public final synthetic Lcom/android/billingclient/api/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/i;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/m0;->a:Lcom/android/billingclient/api/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/m0;->a:Lcom/android/billingclient/api/i;

    sget-object v1, Lcom/android/billingclient/api/w;->r:Lcom/android/billingclient/api/e;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/i;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    return-void
.end method
