.class public final synthetic Lcom/google/android/gms/cloudmessaging/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cloudmessaging/o;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/i;->a:Lcom/google/android/gms/cloudmessaging/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/i;->a:Lcom/google/android/gms/cloudmessaging/o;

    const/4 v1, 0x2

    const-string v2, "Service disconnected"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cloudmessaging/o;->a(ILjava/lang/String;)V

    return-void
.end method
