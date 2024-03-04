.class public Ls3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/i;


# instance fields
.field private a:Lcom/google/android/gms/common/api/Status;

.field private b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/b;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p2, p0, Ls3/b;->a:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ls3/b;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Ls3/b;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
