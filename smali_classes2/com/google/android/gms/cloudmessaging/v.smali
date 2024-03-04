.class public final synthetic Lcom/google/android/gms/cloudmessaging/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cloudmessaging/b;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/b;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/v;->a:Lcom/google/android/gms/cloudmessaging/b;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/v;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lt4/g;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/v;->a:Lcom/google/android/gms/cloudmessaging/b;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/v;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cloudmessaging/b;->c(Landroid/os/Bundle;Lt4/g;)Lt4/g;

    move-result-object p1

    return-object p1
.end method
