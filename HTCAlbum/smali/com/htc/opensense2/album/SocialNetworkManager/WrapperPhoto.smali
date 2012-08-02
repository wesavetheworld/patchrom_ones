.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
.super Ljava/lang/Object;
.source "WrapperPhoto.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataOnline;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCommentCount:I

.field private mDescription:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mIndex:I

.field private mIsCorrupt:Z

.field private mIsInDetail:Z

.field private mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field private mName:Ljava/lang/String;

.field private mPhotoHeight:I

.field private mPhotoLink:Ljava/lang/String;

.field private mPhotoTime:J

.field private mPhotoURL:Ljava/lang/String;

.field private mPhotoURLHeader:Ljava/lang/String;

.field private mPhotoURLThumb:Ljava/lang/String;

.field private mPhotoURLThumbHeader:Ljava/lang/String;

.field private mPhotoWidth:I

.field private mQuality:I

.field private mSelected:Z

.field private mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateID:I

.field private mType:I

.field private mUri:Landroid/net/Uri;

.field private mUriThumb:Landroid/net/Uri;

.field private mVideoUri:Ljava/lang/String;

.field private mszDateTime:Ljava/lang/String;

.field private mszMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->LOG_TAG:Ljava/lang/String;

    .line 241
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 50
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 51
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 56
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 59
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 60
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 62
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 66
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 67
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 68
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 69
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 71
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 72
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 73
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    .line 74
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    .line 100
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 50
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 51
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 56
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 59
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 60
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 62
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 66
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 67
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 68
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 69
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 71
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 72
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 73
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    .line 74
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    .line 255
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->readFromParcel(Landroid/os/Parcel;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/MediumOp;)V
    .locals 5
    .parameter "mediumOp"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 50
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 51
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 56
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 59
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 60
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 62
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 66
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 67
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 68
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 69
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 71
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 72
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 73
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    .line 74
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    .line 105
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Medium;)V
    .locals 5
    .parameter "medium"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 50
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 51
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 56
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 59
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 60
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 62
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 66
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 67
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 68
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 69
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 71
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 72
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 73
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    .line 74
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    .line 108
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    .line 109
    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    return v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 548
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 553
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-static {p1, v0, v1, v2}, Lcom/htc/text/util/HtcStringUtils;->getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, szUri:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    if-eq v2, v1, :cond_0

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    if-nez v1, :cond_3

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 404
    const-string v1, "content"

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_1
    :goto_0
    return-object v0

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_3
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    if-ne v2, v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 412
    const-string v1, "content"

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 451
    .local v0, nHeight:I
    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 3

    .prologue
    .line 474
    const/4 v1, 0x0

    .line 476
    .local v1, type:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, fpath:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    const/4 v1, 0x3

    .line 480
    :cond_0
    return v1
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 437
    .local v0, nWidth:I
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataOnline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaQuality()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoURLHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoURLThumbHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Medium;
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, profile:Lcom/htc/opensense/social/data/Medium;
    new-instance v0, Lcom/htc/opensense/social/data/Medium;

    .end local v0           #profile:Lcom/htc/opensense/social/data/Medium;
    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 145
    .restart local v0       #profile:Lcom/htc/opensense/social/data/Medium;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setId(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setName(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setDescription(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setThumbnailUrl(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setUrl(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setWebLink(Ljava/lang/String;)V

    .line 151
    iget-wide v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/data/Medium;->setCreateTime(J)V

    .line 152
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setType(I)V

    .line 153
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Medium;->setUrl(Ljava/lang/String;)V

    .line 155
    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 543
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSourceOp()Lcom/htc/opensense/social/MediumOp;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public initTags()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 189
    return-void
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public isInDetail()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 3

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    if-ne v1, v2, :cond_0

    .line 531
    const/4 v0, 0x1

    .line 533
    :cond_0
    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0
    .parameter "nCount"

    .prologue
    .line 167
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 168
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setDetailed(Z)V
    .locals 0
    .parameter "bDetailed"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsInDetail:Z

    .line 92
    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 424
    return-void
.end method

.method public setFilePath(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "szUrl"
    .parameter "uri"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 301
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 302
    return-void
.end method

.method public setIsCorrupt(Z)V
    .locals 0
    .parameter "bIsCorrupt"

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 298
    return-void
.end method

.method public setMediaQuality(I)V
    .locals 0
    .parameter "nQuality"

    .prologue
    .line 377
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 378
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "szMimeType"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setPhotoFilePath(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    if-nez p1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 347
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 350
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 353
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    goto :goto_0

    .line 357
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 358
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 359
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 360
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 361
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    goto :goto_0
.end method

.method public setPhotoThumbnailFilePath(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    if-nez p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 320
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    if-nez v1, :cond_2

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 324
    :goto_1
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 327
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    goto :goto_0

    .line 321
    :cond_2
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    goto :goto_1

    .line 331
    :cond_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 332
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 333
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 334
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 335
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    goto :goto_0
.end method

.method public setPhotoURLHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "szHeader"

    .prologue
    .line 561
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLHeader:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setPhotoURLThumbHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "szHeader"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumbHeader:Ljava/lang/String;

    .line 568
    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Medium;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 112
    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense2/album/util/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense2/album/util/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getWebLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 126
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getType()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 127
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl_hq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl_hq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Medium;->getUrl_hq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mSelected:Z

    .line 80
    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    return-void
.end method

.method public setTemplateID(I)V
    .locals 0
    .parameter "nID"

    .prologue
    .line 305
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 306
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 290
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    return-void
.end method