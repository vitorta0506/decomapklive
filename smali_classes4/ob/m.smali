.class public final Lob/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Application;

.field private static b:Lpb/d;

.field private static c:Lpb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpb/f<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Lpb/c;

.field private static e:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lob/m;->c:Lpb/f;

    invoke-static {p0, v0}, Lob/m;->c(Landroid/app/Application;Lpb/f;)V

    return-void
.end method

.method public static b(Landroid/app/Application;Lpb/d;Lpb/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lpb/d;",
            "Lpb/f<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lob/m;->a:Landroid/app/Application;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lob/l;

    invoke-direct {p1}, Lob/l;-><init>()V

    .line 3
    :cond_0
    invoke-static {p1}, Lob/m;->h(Lpb/d;)V

    if-nez p2, :cond_1

    .line 4
    new-instance p2, Lqb/a;

    invoke-direct {p2}, Lqb/a;-><init>()V

    .line 5
    :cond_1
    invoke-static {p2}, Lob/m;->i(Lpb/f;)V

    return-void
.end method

.method public static c(Landroid/app/Application;Lpb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lpb/f<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lob/m;->b(Landroid/app/Application;Lpb/d;Lpb/f;)V

    return-void
.end method

.method static d()Z
    .locals 1

    .line 1
    sget-object v0, Lob/m;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lob/m;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lob/m;->e:Ljava/lang/Boolean;

    .line 3
    :cond_1
    sget-object v0, Lob/m;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static e(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lob/m;->f(III)V

    return-void
.end method

.method public static f(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lob/m;->g(IIIFF)V

    return-void
.end method

.method public static g(IIIFF)V
    .locals 9

    sget-object v0, Lob/m;->b:Lpb/d;

    new-instance v8, Lqb/b;

    sget-object v2, Lob/m;->c:Lpb/f;

    move-object v1, v8

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lqb/b;-><init>(Lpb/f;IIIFF)V

    invoke-interface {v0, v8}, Lpb/d;->b(Lpb/f;)V

    return-void
.end method

.method public static h(Lpb/d;)V
    .locals 1

    .line 1
    sput-object p0, Lob/m;->b:Lpb/d;

    .line 2
    sget-object v0, Lob/m;->a:Landroid/app/Application;

    invoke-interface {p0, v0}, Lpb/d;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static i(Lpb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpb/f<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lob/m;->c:Lpb/f;

    .line 2
    sget-object v0, Lob/m;->b:Lpb/d;

    invoke-interface {v0, p0}, Lpb/d;->b(Lpb/f;)V

    return-void
.end method

.method public static j(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lob/m;->k(IJ)V

    return-void
.end method

.method private static k(IJ)V
    .locals 0

    .line 1
    :try_start_0
    sget-object p1, Lob/m;->a:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lob/m;->l(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lob/m;->l(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static l(Ljava/lang/CharSequence;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lob/m;->m(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method private static m(Ljava/lang/CharSequence;J)V
    .locals 1

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lob/m;->d:Lpb/c;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lob/k;

    invoke-direct {v0}, Lob/k;-><init>()V

    sput-object v0, Lob/m;->d:Lpb/c;

    .line 4
    :cond_1
    sget-object v0, Lob/m;->d:Lpb/c;

    invoke-interface {v0, p0}, Lpb/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    sget-object v0, Lob/m;->b:Lpb/d;

    invoke-interface {v0, p0, p1, p2}, Lpb/d;->c(Ljava/lang/CharSequence;J)V

    :cond_3
    :goto_0
    return-void
.end method
