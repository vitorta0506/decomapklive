.class public final Lcom/google/android/gms/internal/recaptcha/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field static final b:Landroid/accounts/Account;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "[a-z]+(_[a-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/x2;->a:Ljava/util/regex/Pattern;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/q2;->a:Landroid/accounts/Account;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/x2;->b:Landroid/accounts/Account;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "default"

    const-string v2, "unused"

    const-string v3, "special"

    const-string v4, "reserved"

    const-string v5, "shared"

    const-string v6, "virtual"

    const-string v7, "managed"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/x2;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "files"

    const-string v2, "cache"

    const-string v3, "managed"

    const-string v4, "directboot-files"

    const-string v5, "directboot-cache"

    const-string v6, "external"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/x2;->d:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/w2;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/w2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/recaptcha/w2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/v2;)V

    return-object v0
.end method

.method static b(Ljava/lang/String;)V
    .locals 5

    sget-object p0, Lcom/google/android/gms/internal/recaptcha/x2;->a:Ljava/util/regex/Pattern;

    const-string v0, "recaptcha"

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "Module must match [a-z]+(_[a-z]+)*: %s"

    .line 2
    invoke-static {p0, v4, v2}, Lcom/google/android/gms/internal/recaptcha/m3;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/internal/recaptcha/x2;->c:Ljava/util/Set;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    xor-int/2addr p0, v1

    const-string v0, "Module name is reserved and cannot be used: %s"

    .line 4
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/recaptcha/m3;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
