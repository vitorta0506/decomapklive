.class Lcom/google/auth/oauth2/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/api/client/http/s;
    .locals 1

    sget-object v0, Lcom/google/auth/oauth2/n;->d:Lcom/google/api/client/http/s;

    return-object v0
.end method
