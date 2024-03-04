.class public final synthetic Lcom/google/android/gms/cloudmessaging/k;
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

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/k;->a:Lcom/google/android/gms/cloudmessaging/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/k;->a:Lcom/google/android/gms/cloudmessaging/o;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/o;->d()V

    return-void
.end method
