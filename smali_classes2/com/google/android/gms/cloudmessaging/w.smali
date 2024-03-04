.class public final synthetic Lcom/google/android/gms/cloudmessaging/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/a;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/cloudmessaging/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cloudmessaging/w;

    invoke-direct {v0}, Lcom/google/android/gms/cloudmessaging/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/cloudmessaging/w;->a:Lcom/google/android/gms/cloudmessaging/w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt4/g;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lt4/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lt4/g;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_0
    const/4 v0, 0x3

    const-string v1, "Rpc"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lt4/g;->j()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x16

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error making request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    new-instance v0, Ljava/io/IOException;

    .line 6
    invoke-virtual {p1}, Lt4/g;->j()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
