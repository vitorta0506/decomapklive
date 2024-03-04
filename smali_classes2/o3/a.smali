.class public final Lo3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lo3/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lo3/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lr3/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Lp3/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final f:Ls3/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final g:Lcom/google/android/gms/common/api/a$g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final h:Lcom/google/android/gms/common/api/a$g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final i:Lcom/google/android/gms/common/api/a$a;

.field private static final j:Lcom/google/android/gms/common/api/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lo3/a;->g:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/common/api/a$g;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v1, Lo3/a;->h:Lcom/google/android/gms/common/api/a$g;

    .line 3
    new-instance v2, Lo3/d;

    invoke-direct {v2}, Lo3/d;-><init>()V

    sput-object v2, Lo3/a;->i:Lcom/google/android/gms/common/api/a$a;

    new-instance v3, Lo3/e;

    .line 4
    invoke-direct {v3}, Lo3/e;-><init>()V

    sput-object v3, Lo3/a;->j:Lcom/google/android/gms/common/api/a$a;

    .line 5
    sget-object v4, Lo3/b;->a:Lcom/google/android/gms/common/api/a;

    sput-object v4, Lo3/a;->a:Lcom/google/android/gms/common/api/a;

    .line 6
    new-instance v4, Lcom/google/android/gms/common/api/a;

    const-string v5, "Auth.CREDENTIALS_API"

    invoke-direct {v4, v5, v2, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v4, Lo3/a;->b:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v2, "Auth.GOOGLE_SIGN_IN_API"

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lo3/a;->c:Lcom/google/android/gms/common/api/a;

    sget-object v0, Lo3/b;->b:Lr3/a;

    sput-object v0, Lo3/a;->d:Lr3/a;

    new-instance v0, Lj4/e;

    invoke-direct {v0}, Lj4/e;-><init>()V

    sput-object v0, Lo3/a;->e:Lp3/a;

    new-instance v0, Lt3/e;

    invoke-direct {v0}, Lt3/e;-><init>()V

    sput-object v0, Lo3/a;->f:Ls3/a;

    return-void
.end method
