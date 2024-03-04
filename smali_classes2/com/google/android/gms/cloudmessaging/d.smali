.class final Lcom/google/android/gms/cloudmessaging/d;
.super Ll4/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/cloudmessaging/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/d;->a:Lcom/google/android/gms/cloudmessaging/b;

    invoke-direct {p0, p2}, Ll4/f;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/d;->a:Lcom/google/android/gms/cloudmessaging/b;

    invoke-static {v0, p1}, Lcom/google/android/gms/cloudmessaging/b;->d(Lcom/google/android/gms/cloudmessaging/b;Landroid/os/Message;)V

    return-void
.end method
