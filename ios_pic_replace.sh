
echo "Hello World !"

# cd ..
# cd /Applications/

# open *AppIconGear*

# 该脚本需要与图片源文件目录在同一层级时，再执行。例如，当前脚本需要与“货好多”文件夹，在同一目录

echo "客户名 -----> $1 !"
echo "from -----> $2 !"
echo "to-----> $3 !"

kehu="货超多"
pic_source="svn/产品文档/项目打包文件3.0"
xcode_image_dir="/Users/haohuoban/Desktop/app/ios/HuoChaoDuo/Images.xcassets"


if test $1 ;then
   kehu=$1
fi

if test $2 ;then
   pic_source="$2"
fi

if test $3 ;then
   xcode_image_dir="$2"
fi

echo "kehu-----> ${kehu}"
echo "kehu-----> ${pic_source}"
echo "xcode_image_dir-----> ${xcode_image_dir}"

# # 关于我们
to_about_me="${xcode_image_dir}/about_me_logo.imageset"
from_about_me_2x="${pic_source}/${kehu}/司机/about_me_logo@2x.png"
from_about_me_3x="${pic_source}/${kehu}/司机/about_me_logo@3x.png"

cp -R ${from_about_me_2x} ${to_about_me} 
cp -R ${from_about_me_3x} ${to_about_me} 

# 启动页
toLunch="${xcode_image_dir}/LaunchImage.launchimage"
from_lunch="${pic_source}/${kehu}/启动页/*"

cp -R ${from_lunch} ${toLunch}

# appIcon
to_app_icon="${xcode_image_dir}/"
from_icon="/Users/haohuoban/Pictures/AppIconMaker/ic_launcher.png/iOS/Images.xcassets/AppIcon.appiconset"

cp -R ${from_icon} ${to_app_icon}

