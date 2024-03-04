.class public abstract Lw1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c()I
    .locals 1

    sget v0, Lw1/t0;->d:I

    return v0
.end method

.method static d()Lw1/e;
    .locals 1

    sget-object v0, Lw1/e;->a:Lw1/e;

    return-object v0
.end method
