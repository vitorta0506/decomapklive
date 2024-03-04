.class final Lcom/google/android/gms/auth/api/signin/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/o$a;


# direct methods
.method synthetic constructor <init>(Ls3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/i;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Ls3/b;

    .line 2
    invoke-virtual {p1}, Ls3/b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    return-object p1
.end method
