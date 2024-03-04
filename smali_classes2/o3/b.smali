.class public final Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


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
.end field

.field public static final b:Lr3/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a$g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/common/api/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lo3/b;->c:Lcom/google/android/gms/common/api/a$g;

    .line 2
    new-instance v1, Lo3/f;

    invoke-direct {v1}, Lo3/f;-><init>()V

    sput-object v1, Lo3/b;->d:Lcom/google/android/gms/common/api/a$a;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lo3/b;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/auth/i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/i;-><init>()V

    sput-object v0, Lo3/b;->b:Lr3/a;

    return-void
.end method
