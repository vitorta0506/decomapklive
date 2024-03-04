.class public final synthetic Lcom/google/android/gms/cloudmessaging/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cloudmessaging/o;

.field public final synthetic b:Lcom/google/android/gms/cloudmessaging/r;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/o;Lcom/google/android/gms/cloudmessaging/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/m;->a:Lcom/google/android/gms/cloudmessaging/o;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/m;->b:Lcom/google/android/gms/cloudmessaging/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/m;->a:Lcom/google/android/gms/cloudmessaging/o;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/m;->b:Lcom/google/android/gms/cloudmessaging/r;

    iget v1, v1, Lcom/google/android/gms/cloudmessaging/r;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudmessaging/o;->e(I)V

    return-void
.end method
