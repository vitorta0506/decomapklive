.class public final Lj4/f;
.super Lcom/google/android/gms/common/internal/f;
.source "SourceFile"


# instance fields
.field private final I:Lo3/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lo3/a$a;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    new-instance p1, Lo3/a$a$a;

    if-nez p4, :cond_0

    .line 2
    sget-object p4, Lo3/a$a;->d:Lo3/a$a;

    :cond_0
    invoke-direct {p1, p4}, Lo3/a$a$a;-><init>(Lo3/a$a;)V

    .line 3
    invoke-static {}, Lj4/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo3/a$a$a;->a(Ljava/lang/String;)Lo3/a$a$a;

    new-instance p2, Lo3/a$a;

    .line 4
    invoke-direct {p2, p1}, Lo3/a$a;-><init>(Lo3/a$a$a;)V

    iput-object p2, p0, Lj4/f;->I:Lo3/a$a;

    return-void
.end method


# virtual methods
.method protected final B()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method protected final C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method public final k()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method protected final synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lj4/h;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lj4/h;

    goto :goto_0

    :cond_1
    new-instance v0, Lj4/h;

    invoke-direct {v0, p1}, Lj4/h;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected final x()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lj4/f;->I:Lo3/a$a;

    invoke-virtual {v0}, Lo3/a$a;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
